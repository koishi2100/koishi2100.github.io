// // 文章详情页目录导航
// document.addEventListener('DOMContentLoaded', function() {
//     // 文章目录导航
//     const tocLinks = document.querySelectorAll('.article-toc a');
//     if (tocLinks.length > 0) {
//         tocLinks.forEach(link => {
//             link.addEventListener('click', function(e) {
//                 e.preventDefault();
//                 const targetId = this.getAttribute('href');
//                 const targetElement = document.querySelector(targetId);
//                 if (targetElement) {
//                     window.scrollTo({
//                         top: targetElement.offsetTop - 80,
//                         behavior: 'smooth'
//                     });
//                 }
//             });
//         });
//     }
//
//     // 评论表单提交
//     const commentForms = document.querySelectorAll('#comment-form, #video-comment-form, #message-form');
//     commentForms.forEach(form => {
//         form.addEventListener('submit', function(e) {
//             e.preventDefault();
//             alert('评论/留言提交成功！在真实系统中，这里会将数据提交到服务器。');
//             this.reset();
//         });
//     });
//
//     // 图片上传预览
//     const imageUpload = document.getElementById('image-upload');
//     if (imageUpload) {
//         imageUpload.addEventListener('change', function(e) {
//             const file = e.target.files[0];
//             if (file) {
//                 const reader = new FileReader();
//                 reader.onload = function(event) {
//                     document.querySelector('.upload-icon').innerHTML =
//                         `<img src="${event.target.result}" alt="预览" style="max-width:100%; max-height:200px;">`;
//                 };
//                 reader.readAsDataURL(file);
//             }
//         });
//     }
//
//     // 后台管理表格行操作
//     const editButtons = document.querySelectorAll('.btn-edit');
//     const deleteButtons = document.querySelectorAll('.btn-delete');
//
//     editButtons.forEach(btn => {
//         btn.addEventListener('click', function() {
//             alert('编辑功能：在真实系统中，这里会打开编辑表单。');
//         });
//     });
//
//     deleteButtons.forEach(btn => {
//         btn.addEventListener('click', function() {
//             if (confirm('确定要删除此项吗？')) {
//                 const row = this.closest('tr');
//                 row.style.display = 'none';
//                 alert('删除成功！在真实系统中，这里会从数据库中删除记录。');
//             }
//         });
//     });
//
//     // 推荐按钮
//     const recommendButtons = document.querySelectorAll('.btn-recommend');
//     recommendButtons.forEach(btn => {
//         btn.addEventListener('click', function() {
//             alert('已推荐！在真实系统中，这里会更新数据库中的推荐状态。');
//             this.textContent = '已推荐';
//             this.disabled = true;
//             this.style.backgroundColor = '#95a5a6';
//         });
//     });
//
//     // 发布按钮
//     const publishButtons = document.querySelectorAll('.btn-publish');
//     publishButtons.forEach(btn => {
//         btn.addEventListener('click', function() {
//             const row = this.closest('tr');
//             const statusCell = row.querySelector('td:nth-child(6)');
//             if (statusCell) {
//                 statusCell.textContent = '已发布';
//                 alert('发布成功！');
//                 this.style.display = 'none';
//             }
//         });
//     });
// });